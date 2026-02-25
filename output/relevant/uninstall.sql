-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bstwbsftwppdtplgns_options', 'recently_activated', 'active_sitewide_plugins', 'rltdpstsplgn_options', 'widget_pplrpsts_popular_posts_widget', 'widget_ltstpsts_latest_posts_widget', 'widget_rltdpstsplgnwidget', 'update_plugins', 'bws_plugins_update');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', 'rltdpstsplgn_meta_key', '_ftrdpsts_add_to_featured_post', 'pplrpsts_post_views_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', 'rltdpstsplgn_meta_key', '_ftrdpsts_add_to_featured_post', 'pplrpsts_post_views_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', 'rltdpstsplgn_meta_key', '_ftrdpsts_add_to_featured_post', 'pplrpsts_post_views_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', 'rltdpstsplgn_meta_key', '_ftrdpsts_add_to_featured_post', 'pplrpsts_post_views_count');

