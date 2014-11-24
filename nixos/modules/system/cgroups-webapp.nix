{config, pkgs, ...}:
 
let
  cfg = config.services.cgroupsWebapp;
in

with pkgs.lib;

{
  options = {
    services.cgroupsWebapp = {

      enable = mkOption {
        default = false;
        type = with types; bool;
        description = "Enable cgroups-webapp so you can edit cgroups via http";
      };

      port = mkOption {
        default = 8000;
        # Of course it should be an int but I can't see how to convert one into a string
        type = with types; int;
        description = "Set port for cgroups-webapp to listen on";
      };

    };
  };
  
  config = mkIf cfg.enable {
    jobs.cgroupsWebapp = {
      description = "Start the cgroups webbapp.";
      startOn = "started network-interfaces";
      exec = ''/var/setuid-wrappers/sudo ${pkgs.haskellPackages.cgroupsWebapp}/bin/cgroups-webapp ${toString cfg.port}'';
    };

    security.sudo.enable = true;
    # networking.firewall.enable = false;

  };
}


