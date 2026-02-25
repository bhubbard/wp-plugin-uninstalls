<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('muv-hp-ausgabe-typ');
delete_site_option('muv-hp-ausgabe-typ');
delete_option('muv-hp-ausgabe-seite');
delete_site_option('muv-hp-ausgabe-seite');
delete_option('muv-hp-freischalten-key');
delete_site_option('muv-hp-freischalten-key');
delete_option('muv-hp-verstecken-aktiv');
delete_site_option('muv-hp-verstecken-aktiv');
delete_option('muv-hp-verstecken-bereiche-inkl');
delete_site_option('muv-hp-verstecken-bereiche-inkl');
delete_option('muv-hp-verstecken-bereiche-exkl');
delete_site_option('muv-hp-verstecken-bereiche-exkl');

