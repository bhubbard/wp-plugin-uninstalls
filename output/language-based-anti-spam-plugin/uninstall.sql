-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lbcsc_blog_lang', 'lbcsc_alt_lang');

