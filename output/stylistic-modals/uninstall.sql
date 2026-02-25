-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('headline', 'subtitle', 'header-background-color', 'header-text-color', 'content-background-color', 'content-text-color', 'modal-width', 'allow-fullscreen', 'border-radius-style', 'mode', 'timeout-time', 'click-element', 'set-cookie', 'cookie-expire-time');
DELETE FROM wp_usermeta WHERE meta_key IN ('headline', 'subtitle', 'header-background-color', 'header-text-color', 'content-background-color', 'content-text-color', 'modal-width', 'allow-fullscreen', 'border-radius-style', 'mode', 'timeout-time', 'click-element', 'set-cookie', 'cookie-expire-time');
DELETE FROM wp_termmeta WHERE meta_key IN ('headline', 'subtitle', 'header-background-color', 'header-text-color', 'content-background-color', 'content-text-color', 'modal-width', 'allow-fullscreen', 'border-radius-style', 'mode', 'timeout-time', 'click-element', 'set-cookie', 'cookie-expire-time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('headline', 'subtitle', 'header-background-color', 'header-text-color', 'content-background-color', 'content-text-color', 'modal-width', 'allow-fullscreen', 'border-radius-style', 'mode', 'timeout-time', 'click-element', 'set-cookie', 'cookie-expire-time');

