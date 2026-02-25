-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('statictoolbar_opacity', 'statictoolbar_txtcolor', 'statictoolbar_bgcolor', 'statictoolbar_rss', 'statictoolbar_nb');

