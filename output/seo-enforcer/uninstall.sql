-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seoe_settings_version', 'seoe_post_notices', 'seoe_title', 'seoe_title_length', 'seoe_title_trunc_type', 'seoe_title_trunc_ex', 'seoe_desc', 'seoe_desc_trunc_type', 'seoe_desc_trunc_ex', 'seoe_h1', 'seoe_h1_ex', 'seoe_settings');

