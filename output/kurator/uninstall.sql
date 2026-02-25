-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kurator-box-analytic', 'kurator-box-color-btn', 'kurator-box-color-txt', 'kurator-box-font-size', 'kurator-box-border-radius', 'kurator-box-color-btn-hover', 'kurator-box-color-txt-hover', 'kurator-box-color-btn-important', 'kurator-box-color-txt-important', 'kurator-box-font-size-important', 'kurator-box-border-radius-important', 'kurator-box-color-btn-hover-important', 'kurator-box-color-txt-hover-important');

