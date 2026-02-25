-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orientation', 'some_other_option', 'option_etc', 'perspective', 'cuboidsCount', 'cuboidsRandom', 'maxCuboidsCount', 'speed', 'easing', 'autoplay', 'interval', 'fwds_effect', 'fwds_interval', 'fwds_autoplay', 'fwds_playBtn', 'fwds_playbtn');

