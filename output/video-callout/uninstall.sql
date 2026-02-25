-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace');
DELETE FROM wp_options WHERE option_name LIKE '%autoplay';
DELETE FROM wp_options WHERE option_name LIKE '%delay';
DELETE FROM wp_options WHERE option_name LIKE '%frequency_period';
DELETE FROM wp_options WHERE option_name LIKE '%frequency_range';
DELETE FROM wp_options WHERE option_name LIKE '%mute';
DELETE FROM wp_options WHERE option_name LIKE '%pin';
DELETE FROM wp_options WHERE option_name LIKE '%modal-window';
DELETE FROM wp_options WHERE option_name LIKE '%modal-background';
DELETE FROM wp_options WHERE option_name LIKE '%modal-has-blur';
DELETE FROM wp_options WHERE option_name LIKE '%modal-blur';
DELETE FROM wp_options WHERE option_name LIKE '%custom-class';
DELETE FROM wp_options WHERE option_name LIKE '%z-index';
DELETE FROM wp_options WHERE option_name LIKE '%width';
DELETE FROM wp_options WHERE option_name LIKE '%height';
DELETE FROM wp_options WHERE option_name LIKE '%margin';
DELETE FROM wp_options WHERE option_name LIKE '%padding';
DELETE FROM wp_options WHERE option_name LIKE '%background';
DELETE FROM wp_options WHERE option_name LIKE '%frame-has-shadow';
DELETE FROM wp_options WHERE option_name LIKE '%shadow-color';
DELETE FROM wp_options WHERE option_name LIKE '%shadow-blur';
DELETE FROM wp_options WHERE option_name LIKE '%shadow-hoffset';
DELETE FROM wp_options WHERE option_name LIKE '%shadow-voffset';
DELETE FROM wp_options WHERE option_name LIKE '%close-show';
DELETE FROM wp_options WHERE option_name LIKE '%close-btn-size';
DELETE FROM wp_options WHERE option_name LIKE '%close-btn-background';
DELETE FROM wp_options WHERE option_name LIKE '%close-btn-foreground';
DELETE FROM wp_options WHERE option_name LIKE '%close-has-shadow';
DELETE FROM wp_options WHERE option_name LIKE '%close-shadow-blur';
DELETE FROM wp_options WHERE option_name LIKE '%close-shadow-hoffset';
DELETE FROM wp_options WHERE option_name LIKE '%close-shadow-voffset';
DELETE FROM wp_options WHERE option_name LIKE '%close-shadow-color';
DELETE FROM wp_options WHERE option_name LIKE '%frequency';

