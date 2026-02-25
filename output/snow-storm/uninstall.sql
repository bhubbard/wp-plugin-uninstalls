-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snowstorm_flakesMax', 'snowstorm_flakesMaxActive', 'snowstorm_animationInterval', 'snowstorm_excludeMobile', 'snowstorm_followMouse', 'snowstorm_snowColor', 'snowstorm_snowCharacter', 'snowstorm_snowStick', 'snowstorm_useMeltEffect', 'snowstorm_useTwinkleEffect', 'snowstorm_ratereview_scheduled', 'snowstorm_showmessage_ratereview', 'snowstorm_hidemessage_ratereview', 'snowstorm_dismissed-ratereview', 'snowstorm_pp', 'snow_storm_smart_rating_dismissed');
DELETE FROM wp_options WHERE option_name LIKE 'snowstorm_dismissed-%';
DELETE FROM wp_options WHERE option_name LIKE 'snowstorm_%';

