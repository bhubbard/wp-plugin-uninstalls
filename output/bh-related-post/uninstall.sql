-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bh_related_post_options', 'bh_related_post_do_activation_redirect');

