<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('piri_faq_ai_assistant_company_value');
delete_site_option('piri_faq_ai_assistant_company_value');
delete_option('piri_faq_ai_assistant_bot_name_value');
delete_site_option('piri_faq_ai_assistant_bot_name_value');
delete_option('piri_faq_ai_assistant_base_url_value');
delete_site_option('piri_faq_ai_assistant_base_url_value');
delete_option('piri_faq_ai_assistant_bot_src_value');
delete_site_option('piri_faq_ai_assistant_bot_src_value');
delete_option('piri_faq_ai_assistant_bot_inverted_value');
delete_site_option('piri_faq_ai_assistant_bot_inverted_value');
delete_option('piri_faq_ai_assistant_primary_color_value');
delete_site_option('piri_faq_ai_assistant_primary_color_value');
delete_option('piri_faq_ai_assistant_initial_state_value');
delete_site_option('piri_faq_ai_assistant_initial_state_value');
delete_option('piri_faa_example_setting');
delete_site_option('piri_faa_example_setting');
delete_option('wpr_example_setting');
delete_site_option('wpr_example_setting');

