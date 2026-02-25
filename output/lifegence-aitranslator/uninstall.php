<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lifeai_aitranslator_cache_version');
delete_site_option('lifeai_aitranslator_cache_version');
delete_option('lifeai_aitranslator_settings');
delete_site_option('lifeai_aitranslator_settings');
delete_option('lifeai_aitranslator_custom_languages');
delete_site_option('lifeai_aitranslator_custom_languages');
delete_option('lifeai_aitranslator_version');
delete_site_option('lifeai_aitranslator_version');

// Delete Transients
delete_transient('lifeai_aitranslator_admin_notices');
delete_site_transient('lifeai_aitranslator_admin_notices');

