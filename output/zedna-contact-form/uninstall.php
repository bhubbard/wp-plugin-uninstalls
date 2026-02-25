<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zedna_contact_form_grsitekey');
delete_site_option('zedna_contact_form_grsitekey');
delete_option('zedna_contact_form_grsecretkey');
delete_site_option('zedna_contact_form_grsecretkey');
delete_option('zedna_contact_form_allowattachment');
delete_site_option('zedna_contact_form_allowattachment');
delete_option('zedna_contact_form_keepattachment');
delete_site_option('zedna_contact_form_keepattachment');
delete_option('zedna_contact_form_defaultemail');
delete_site_option('zedna_contact_form_defaultemail');
delete_option('zedna_contact_form_defaultsubject');
delete_site_option('zedna_contact_form_defaultsubject');
delete_option('zedna_contact_form_lang_wrongmail');
delete_site_option('zedna_contact_form_lang_wrongmail');
delete_option('zedna_contact_form_lang_emptymessage');
delete_site_option('zedna_contact_form_lang_emptymessage');
delete_option('zedna_contact_form_lang_messagesent');
delete_site_option('zedna_contact_form_lang_messagesent');
delete_option('zedna_contact_form_lang_messagenotsent');
delete_site_option('zedna_contact_form_lang_messagenotsent');
delete_option('zedna_contact_form_lang_recaptcha');
delete_site_option('zedna_contact_form_lang_recaptcha');
delete_option('zedna_contact_form_lang_email');
delete_site_option('zedna_contact_form_lang_email');
delete_option('zedna_contact_form_lang_message');
delete_site_option('zedna_contact_form_lang_message');
delete_option('zedna_contact_form_lang_submit');
delete_site_option('zedna_contact_form_lang_submit');

