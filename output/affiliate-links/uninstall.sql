-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affiliate_links_settings', 'widget_affiliate_links_popular', 'widget_affiliate_links_recent');
DELETE FROM wp_options WHERE option_name LIKE 'link_colors_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_affiliate_links_target', '_affiliate_links_description', '_affiliate_links_redirect', '_affiliate_links_nofollow', '_affiliate_links_stat', '_affiliate_links_target_two', '_affiliate_links_iframe', '_affiliate_links_additional_target_url', '_embedded_add_rel', '_embedded_add_target', '_embedded_add_link_title', '_embedded_add_link_class', '_embedded_add_link_anchor');
DELETE FROM wp_usermeta WHERE meta_key IN ('_affiliate_links_target', '_affiliate_links_description', '_affiliate_links_redirect', '_affiliate_links_nofollow', '_affiliate_links_stat', '_affiliate_links_target_two', '_affiliate_links_iframe', '_affiliate_links_additional_target_url', '_embedded_add_rel', '_embedded_add_target', '_embedded_add_link_title', '_embedded_add_link_class', '_embedded_add_link_anchor');
DELETE FROM wp_termmeta WHERE meta_key IN ('_affiliate_links_target', '_affiliate_links_description', '_affiliate_links_redirect', '_affiliate_links_nofollow', '_affiliate_links_stat', '_affiliate_links_target_two', '_affiliate_links_iframe', '_affiliate_links_additional_target_url', '_embedded_add_rel', '_embedded_add_target', '_embedded_add_link_title', '_embedded_add_link_class', '_embedded_add_link_anchor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_affiliate_links_target', '_affiliate_links_description', '_affiliate_links_redirect', '_affiliate_links_nofollow', '_affiliate_links_stat', '_affiliate_links_target_two', '_affiliate_links_iframe', '_affiliate_links_additional_target_url', '_embedded_add_rel', '_embedded_add_target', '_embedded_add_link_title', '_embedded_add_link_class', '_embedded_add_link_anchor');

