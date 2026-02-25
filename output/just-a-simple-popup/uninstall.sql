-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('background_image', 'color', 'fadetime', 'pageids', 'home', 'opacity', 'width', 'clickbuttons', 'onpageload', 'background-repeat', 'background-size');
DELETE FROM wp_usermeta WHERE meta_key IN ('background_image', 'color', 'fadetime', 'pageids', 'home', 'opacity', 'width', 'clickbuttons', 'onpageload', 'background-repeat', 'background-size');
DELETE FROM wp_termmeta WHERE meta_key IN ('background_image', 'color', 'fadetime', 'pageids', 'home', 'opacity', 'width', 'clickbuttons', 'onpageload', 'background-repeat', 'background-size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('background_image', 'color', 'fadetime', 'pageids', 'home', 'opacity', 'width', 'clickbuttons', 'onpageload', 'background-repeat', 'background-size');

