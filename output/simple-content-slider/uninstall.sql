-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scontentslider_posttype', 'scontentslider_svn', 'scontentslider_menutitle', 'scontentslider_max_H', 'scontentslider_max_W', 'scontentslider_html5', 'scontentslider_effect', 'scontentslider_autoplay', 'scontentslider_interval', 'scontentslider_navoutside', 'scontentslider_css', 'scontentslider_navigation', 'scontentslider_pagination');

