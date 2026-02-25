-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('byconsolecusgreeting_card_one_check_box', 'byconsolecusgreeting_card_two_check_box', 'byconsolecusgreeting_card_three_check_box', 'byconsolecusgreeting_card_four_check_box', 'byconsolecusgreeting_card_option_one_text', 'byconsolecusgreeting_card_pdf_one', 'byconsolecusgreeting_card_option_two_text', 'byconsolecusgreeting_card_pdf_two', 'byconsolecusgreeting_card_option_three_text', 'byconsolecusgreeting_card_pdf_three', 'byconsolecusgreeting_card_option_four_text', 'byconsolecusgreeting_card_pdf_four', 'byconsolecusgreeting_card_option_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_byconsole_free_plugin_greeting_card_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_byconsole_free_plugin_greeting_card_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_byconsole_free_plugin_greeting_card_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_byconsole_free_plugin_greeting_card_link');

