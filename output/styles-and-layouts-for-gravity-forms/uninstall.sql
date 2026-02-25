-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'stla_licenses', 'gf_stla_reviews_installed_on', 'gf_stla_booster_settings', 'gf_stla_select_form_id', 'gf_stla_general_settings', 'update_plugins', 'gf_stla_welcome_activation_redirect', 'stla_updated');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'gf_stla_field_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'gf_stla_form_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'gf_stla_general_settings%';
DELETE FROM wp_options WHERE option_name LIKE 'gf_stla_antispam_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'gf_stla_form_id_material_design_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gf_stla_reviews_dismissed_triggers', '_gf_stla_reviews_last_dismissed', '_gf_stla_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gf_stla_reviews_dismissed_triggers', '_gf_stla_reviews_last_dismissed', '_gf_stla_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gf_stla_reviews_dismissed_triggers', '_gf_stla_reviews_last_dismissed', '_gf_stla_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gf_stla_reviews_dismissed_triggers', '_gf_stla_reviews_last_dismissed', '_gf_stla_reviews_already_did');

