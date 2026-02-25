-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ce_html', 'ce_length', 'ce_moretext', 'ce_nofollow');

