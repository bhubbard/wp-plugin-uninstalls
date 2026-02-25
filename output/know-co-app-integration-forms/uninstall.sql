-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('know__forms__element__input_styles', 'know__forms__element__input_classes', 'know__forms__element__textarea_styles', 'know__forms__element__textarea_classes', 'know__forms__element__select_styles', 'know__forms__element__select_classes', 'know__forms__element__button_styles', 'know__forms__element__button_classes', 'know--forms--settings-group');

