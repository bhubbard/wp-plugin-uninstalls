-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my-affiliate-link-siteurl', 'my-affiliate-link-prefix', 'my-affiliate-link-cssclass', 'my-affiliate-link-onclick', 'my-affiliate-link-nofollow', 'my-affiliate-link-target', 'my-affiliate-link-trailingslash', 'my-affiliate-link-childsep', 'my-affiliate-link-amazontrackingid', 'my-affiliate-link-class');

