-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xoo-qv-button-text', 'xoo-qv-button-fsize', 'xoo-qv-button-position', 'xoo-qv-btn-bgc', 'xoo-qv-button-color', 'xoo-qv-btn-ps', 'xoo-qv-btn-bs', 'xoo-qv-btn-bc', 'xoo-qv-btn-icon', 'xoo-qv-btn-iconc', 'xoo-qv-gl-mobile', 'xoo-qv-gl-anim', 'xoo-qv-gl-pbutton', 'xoo-qv-gl-pbutton-text', 'xoo-qv-lb-img-area', 'xoo-qv-lb-img-width', 'xoo-qv-lb-en-gallery', 'xoo-qv-lb-enable', 'xoo-qv-lb-title');

