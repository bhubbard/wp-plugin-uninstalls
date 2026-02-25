-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a1post_u', 'a1post_p', 'a1post_lbl', 'a1post_st');

