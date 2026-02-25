-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guaven_wtd_type', 'guaven_wtd_field_name', 'guaven_wtd_tip_options', 'guaven_wtd_custom_amount', 'guaven_wtd_custom_amount_text', 'guaven_wtd_notice', 'guaven_wtd_notice_hideafter', 'guaven_wtd_installed_100', 'guaven_wtd_custom_amount_button');

