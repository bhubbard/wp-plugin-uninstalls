-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vScroll', 'hScroll', 'showOnHover', 'zindex', 'easingDuration', 'trackWidth', 'trackColor', 'barWidth', 'barColor');

