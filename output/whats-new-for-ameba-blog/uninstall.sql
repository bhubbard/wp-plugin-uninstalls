-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amebawhatsnew-ameba-id', 'amebawhatsnew-item-num', 'amebawhatsnew-excerpt-length');

