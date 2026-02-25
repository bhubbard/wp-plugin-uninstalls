-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cpcm-unfold', '_cpcm-unfold', 'cpcm-orderby', '_cpcm-orderby', '_cpcm-order', 'cpcm-item-count', '_cpcm-item-count', '_cpcm-item-skip', 'cpcm-item-titles', '_cpcm-item-titles', '_cpcm-remove-original-item', '_cpcm-subcategories', 'cpcm-order', 'cpcm-item-skip', 'cpcm-remove-original-item', 'cpcm-subcategories', '_menu_item_classes');
DELETE FROM wp_usermeta WHERE meta_key IN ('cpcm-unfold', '_cpcm-unfold', 'cpcm-orderby', '_cpcm-orderby', '_cpcm-order', 'cpcm-item-count', '_cpcm-item-count', '_cpcm-item-skip', 'cpcm-item-titles', '_cpcm-item-titles', '_cpcm-remove-original-item', '_cpcm-subcategories', 'cpcm-order', 'cpcm-item-skip', 'cpcm-remove-original-item', 'cpcm-subcategories', '_menu_item_classes');
DELETE FROM wp_termmeta WHERE meta_key IN ('cpcm-unfold', '_cpcm-unfold', 'cpcm-orderby', '_cpcm-orderby', '_cpcm-order', 'cpcm-item-count', '_cpcm-item-count', '_cpcm-item-skip', 'cpcm-item-titles', '_cpcm-item-titles', '_cpcm-remove-original-item', '_cpcm-subcategories', 'cpcm-order', 'cpcm-item-skip', 'cpcm-remove-original-item', 'cpcm-subcategories', '_menu_item_classes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cpcm-unfold', '_cpcm-unfold', 'cpcm-orderby', '_cpcm-orderby', '_cpcm-order', 'cpcm-item-count', '_cpcm-item-count', '_cpcm-item-skip', 'cpcm-item-titles', '_cpcm-item-titles', '_cpcm-remove-original-item', '_cpcm-subcategories', 'cpcm-order', 'cpcm-item-skip', 'cpcm-remove-original-item', 'cpcm-subcategories', '_menu_item_classes');

