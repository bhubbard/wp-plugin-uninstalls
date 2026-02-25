-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tlcs_general_options', 'tlcs_template_options', 'tlcs_design_options', 'tlcs_social_options', 'tlcs_translation_options', 'tlcs_support_options', 'tlcs_design_options_campaign_monitor_clients', 'tlcs_design_options_campaign_monitor_lists', 'tlcs_design_options_convertkit_forms', 'tlcs_design_options_getresponse_campaigns', 'tlcs_design_options_mailchimp_lists', 'tlcs_design_options_sendinblue_lists');
DELETE FROM wp_options WHERE option_name LIKE 'tlcs_design_options_%';

