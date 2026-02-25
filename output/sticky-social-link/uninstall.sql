-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sticky-slink-fb', 'sticky-slink-twitter', 'sticky-slink-insta', 'sticky-slink-linkedin', 'sticky-slink-youtube', 'sticky-slink-behance', 'sticky-slink-pinterest', 'sticky-slink-tiktok', 'sticky-slink-whatsapp', 'sticky-slink-messenger', 'sticky-slink-telegram', 'sticky-slink-wechat', 'sticky-slink-viber', 'sticky-slinkeemail', 'sticky-slink-dribbble', 'sticky-slink-reddit', 'sticky-slink-snapchat', 'sticky-slink-medium', 'sticky-slink-quora', 'sticky-slink-tumblr', 'sslink-position', 'sslink-menubgcolor', 'sslink-iconbgcolor', 'sslink-iconhovercolor', 'sslink-roundcorner', 'sslink_plugin_do_activate');

