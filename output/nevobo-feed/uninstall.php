<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feed');
delete_site_option('feed');
delete_option('aantal');
delete_site_option('aantal');
delete_option('sporthal');
delete_site_option('sporthal');
delete_option('plaats');
delete_site_option('plaats');
delete_option('vereniging');
delete_site_option('vereniging');
delete_option('ical');
delete_site_option('ical');
delete_option('sets');
delete_site_option('sets');
delete_option('naamlengte_prog');
delete_site_option('naamlengte_prog');
delete_option('naamlengte_uitslag');
delete_site_option('naamlengte_uitslag');
delete_option('naamlengte_stand');
delete_site_option('naamlengte_stand');
delete_option('nevobo_maps');
delete_site_option('nevobo_maps');
delete_option('maps_home');
delete_site_option('maps_home');
delete_option('image_set');
delete_site_option('image_set');
delete_option('highlight_color');
delete_site_option('highlight_color');
delete_option('standen_aantal');
delete_site_option('standen_aantal');
delete_option('uitslagen_aantal');
delete_site_option('uitslagen_aantal');
delete_option('programma_aantal');
delete_site_option('programma_aantal');
delete_option('$naamlengte_uitslag');
delete_site_option('$naamlengte_uitslag');

