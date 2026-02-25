-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sybat.ad_tag_name', 'sybat.affiliate_urls', 'sybat.update_on_save');

