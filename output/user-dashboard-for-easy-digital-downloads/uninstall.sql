-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ud_for_edd_general_options', 'ud_for_edd_redirection_options', 'ud_for_edd_access_control_options', 'ud_for_edd_email_options', 'ud_for_edd_reset_options', 'ud_for_edd_general_option', 'ud_for_edd_redirection_option', 'ud_for_edd_options', 'ud_for_edd_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

