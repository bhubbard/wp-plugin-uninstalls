-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('animationInterval', 'flakeBottom', 'flakesMax', 'flakesMaxActive', 'followMouse', 'freezeOnBlur', 'snowColor', 'snowCharacter', 'snowStick', 'targetElement', 'useMeltEffect', 'useTwinkleEffect', 'usePositionFixed', 'vMaxX', 'vMaxY');

