-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aln_login_attempts', 'aln_login_attempts_since_viewed', 'aln_current_version');

