-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mystickyelements-widgets', 'mse_help_cta', 'stickyelements_widgets', 'get_mystickyelements_page_views', 'mystickyelements_hide_review_box', 'mystickyelements_show_review_box_after', 'hide_mserecommended_plugin', 'mystickyelements-contact-form', 'mystickyelements-contact-field', 'mystickyelements-social-channels', 'mystickyelements-social-channels-tabs', 'mystickyelements-general-settings', 'mystickyelements-contact-mail-sent', 'mystickyelements_intro_popup', 'myStickyelements_show_leads', 'mse_redirect', 'mysticky_elements_options', 'mysticky_elements_options0', 'mysticky_elements_options1', 'mysticky_elements_options2', 'mysticky_elements_options3', 'mysticky_elements_options4', 'mysticky_elements_options5', 'mysticky_elements_options6', 'mysticky_elements_options7', 'mysticky_elements_options8', 'mysticky_elements_options9', 'default_post_edit_rows', 'mystickyelements-update_2_0');
DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_upgrade_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_upgrade_box_after';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after';
DELETE FROM wp_options WHERE option_name LIKE 'mystickyelements-social-channels-tabs%';
DELETE FROM wp_options WHERE option_name LIKE 'mystickyelements-contact-field%';
DELETE FROM wp_options WHERE option_name LIKE 'mystickyelements-contact-form%';
DELETE FROM wp_options WHERE option_name LIKE 'mystickyelements-social-channels%';
DELETE FROM wp_options WHERE option_name LIKE 'mystickyelements-general-settings%';

