-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbxwpbookmark_version', 'cbxwpbookmark_basics', 'cbxwpbookmark_customizer', 'cbxwpbookmark_cat_addedit_error', 'cbxwpbookmark_upgraded_notice', 'cbxwpbookmark_activated_notice', 'cbxwpbookmark_proaddon_deactivated', 'cbxwpbookmark_mycredaddon_deactivated');

