<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pvlt-modal-title');
delete_site_option('pvlt-modal-title');
delete_option('pvlt-modal-text');
delete_site_option('pvlt-modal-text');
delete_option('pvlt-modal-accept-button');
delete_site_option('pvlt-modal-accept-button');
delete_option('pvlt-modal-cancel-button');
delete_site_option('pvlt-modal-cancel-button');
delete_option('pvlt_media_selector_attachment_id');
delete_site_option('pvlt_media_selector_attachment_id');
delete_option('pvlt-powered');
delete_site_option('pvlt-powered');
delete_option('pvlt-display-option');
delete_site_option('pvlt-display-option');
delete_option('pvlt-time-interval');
delete_site_option('pvlt-time-interval');
delete_option('pvlt-cookie-interval');
delete_site_option('pvlt-cookie-interval');
delete_option('pvlt-show-options');
delete_site_option('pvlt-show-options');
delete_option('pvlt-obscured');
delete_site_option('pvlt-obscured');
delete_option('pvlt-disable-jquery');
delete_site_option('pvlt-disable-jquery');
delete_option('pvlt-paused');
delete_site_option('pvlt-paused');
delete_option('pvlt-uid');
delete_site_option('pvlt-uid');
delete_option('pvlt-sender-id');
delete_site_option('pvlt-sender-id');
delete_option('pvlt-publicKey');
delete_site_option('pvlt-publicKey');

