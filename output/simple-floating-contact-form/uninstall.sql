-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfcf-no-styling-option', 'sfcf-display-custom', 'sfcf-display-pages', 'sfcf-display-posts', 'sfcf-display-posts-archive', 'sfcf-display-categories', 'sfcf-display-tags', 'sfcf-email-recipent', 'sfcf-form-toggler', 'sfcf-form-title', 'sfcf-form-name-input', 'sfcf-form-email-input', 'sfcf-form-email-subject', 'sfcf-form-email-message', 'sfcf-form-checkbox', 'sfcf-form-submit', 'sfcf-success-title', 'sfcf-success-note', 'sfcf-success-button', 'sfcf-success-link', 'sfcf-corners-square', 'sfcf-placement-left', 'sfcf-form-icon', 'sfcf-success-icon', 'sfcf-color-toggle', 'sfcf-color-toggler-text', 'sfcf-color-bg', 'sfcf-color-text', 'sfcf-color-input-placeholder', 'sfcf-color-input-text', 'sfcf-color-input-text-focus', 'sfcf-color-input-border', 'sfcf-color-terms-link', 'sfcf-color-btn', 'sfcf-color-btn-text', 'sfcf-color-success-icon');

