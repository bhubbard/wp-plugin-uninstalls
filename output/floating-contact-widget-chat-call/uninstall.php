<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('floacowi_phone_contact_phone');
delete_site_option('floacowi_phone_contact_phone');
delete_option('floacowi_phone_contact_whatsapp');
delete_site_option('floacowi_phone_contact_whatsapp');
delete_option('floacowi_phone_contact_greeting');
delete_site_option('floacowi_phone_contact_greeting');
delete_option('floacowi_phone_contact_prefilled');
delete_site_option('floacowi_phone_contact_prefilled');
delete_option('floacowi_phone_contact_whatsapp_text');
delete_site_option('floacowi_phone_contact_whatsapp_text');
delete_option('floacowi_phone_contact_call_text');
delete_site_option('floacowi_phone_contact_call_text');

