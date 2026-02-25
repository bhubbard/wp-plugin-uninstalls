-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_wp_security_link_meta', 'sp_wp_security_wp_version', 'sp_wp_security_rss', 'sp_wp_security_security_header', 'sp_wp_security_emojis', 'sp_wp_security_comments');

