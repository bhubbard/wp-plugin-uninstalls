-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mk_slides_count', 'mk_images', 'mk_links', 'mk_links_target', 'mk_titles', 'mk_desc', 'mkShowLabel', 'mkShowNav', 'mkStopOverHover', 'mkSliderWidth', 'mkSliderHeight', 'mkSliderBorderWidth', 'mkSliderBorderColor', 'mkSliderBorderRadius', 'mkSliderTransition', 'mkTransitionVelocity', 'mkSliderInterval');
DELETE FROM wp_usermeta WHERE meta_key IN ('mk_slides_count', 'mk_images', 'mk_links', 'mk_links_target', 'mk_titles', 'mk_desc', 'mkShowLabel', 'mkShowNav', 'mkStopOverHover', 'mkSliderWidth', 'mkSliderHeight', 'mkSliderBorderWidth', 'mkSliderBorderColor', 'mkSliderBorderRadius', 'mkSliderTransition', 'mkTransitionVelocity', 'mkSliderInterval');
DELETE FROM wp_termmeta WHERE meta_key IN ('mk_slides_count', 'mk_images', 'mk_links', 'mk_links_target', 'mk_titles', 'mk_desc', 'mkShowLabel', 'mkShowNav', 'mkStopOverHover', 'mkSliderWidth', 'mkSliderHeight', 'mkSliderBorderWidth', 'mkSliderBorderColor', 'mkSliderBorderRadius', 'mkSliderTransition', 'mkTransitionVelocity', 'mkSliderInterval');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mk_slides_count', 'mk_images', 'mk_links', 'mk_links_target', 'mk_titles', 'mk_desc', 'mkShowLabel', 'mkShowNav', 'mkStopOverHover', 'mkSliderWidth', 'mkSliderHeight', 'mkSliderBorderWidth', 'mkSliderBorderColor', 'mkSliderBorderRadius', 'mkSliderTransition', 'mkTransitionVelocity', 'mkSliderInterval');

