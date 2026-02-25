-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('issuem_flush_rewrite_rules', 'last_zeen101_dot_com_rss_item', 'issuem', 'issuem_nag', 'issuem_nag_version_dismissed', 'issuem_api_error_received');
DELETE FROM wp_options WHERE option_name LIKE '%_meta';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('issuem_rss_item_notice_link', '_issuem_author_name', '_teaser_text', '_featured_rotator', '_featured_thumb', '_wp_attachment_image_alt', 'issue_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('issuem_rss_item_notice_link', '_issuem_author_name', '_teaser_text', '_featured_rotator', '_featured_thumb', '_wp_attachment_image_alt', 'issue_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('issuem_rss_item_notice_link', '_issuem_author_name', '_teaser_text', '_featured_rotator', '_featured_thumb', '_wp_attachment_image_alt', 'issue_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('issuem_rss_item_notice_link', '_issuem_author_name', '_teaser_text', '_featured_rotator', '_featured_thumb', '_wp_attachment_image_alt', 'issue_order');

