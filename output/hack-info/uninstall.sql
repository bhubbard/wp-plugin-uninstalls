-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hack-info_option', 'hackinfo_db_version', 'hackinfo_digest_enable', 'hackinfo_digest_email', 'hackinfo_digest_timer', 'hackinfo_whois_enable', 'hackinfo_digest_sent', 'hackinfo_digest_size');

