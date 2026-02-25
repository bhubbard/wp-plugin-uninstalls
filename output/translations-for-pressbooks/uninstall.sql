-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tfp_uninstall_save', 'tfp_book_translation_enable');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('efp_trans_language', 'pb_is_based_on', 'tfp_post_translation_disable', 'pb_language');
DELETE FROM wp_usermeta WHERE meta_key IN ('efp_trans_language', 'pb_is_based_on', 'tfp_post_translation_disable', 'pb_language');
DELETE FROM wp_termmeta WHERE meta_key IN ('efp_trans_language', 'pb_is_based_on', 'tfp_post_translation_disable', 'pb_language');
DELETE FROM wp_commentmeta WHERE meta_key IN ('efp_trans_language', 'pb_is_based_on', 'tfp_post_translation_disable', 'pb_language');

