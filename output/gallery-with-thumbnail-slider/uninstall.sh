#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gwts_gwl_lightbx_switcher'
wp option delete 'gwts_gwl_lightbx_download'
wp option delete 'gwts_gwl_sliderwidth'
wp option delete 'gwts_gwl_slider_thumb_size'
wp option delete 'gwts_gwl_gallery_numberof_items'
wp option delete 'gwts_gwl_enable_caption'
wp option delete 'gwts_gwl_enable_alt_txt'
wp option delete 'gwts_gwl_slidemargin'
wp option delete 'gwts_gwl_classtoslider'
wp option delete 'gwts_gwl_speedslider'
wp option delete 'gwts_gwl_slideinterval'
wp option delete 'gwts_gwl_slidermode'
wp option delete 'gwts_gwl_allow_looping'
wp option delete 'gwts_gwl_slider_pagination'
wp option delete 'gwts_gwl_slider_menuoption'
wp option delete 'gwts_gwl_numberof_thumbitems'
wp option delete 'gwts_gwl_slider_navigation'
wp option delete 'gwts_gwl_slider_effect'
wp option delete 'gwts_gwl_gallery_notice'
wp option delete 'gwts_gwl_posttypes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwts_gwl_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwts_gwl_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwts_gwl_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwts_gwl_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwts_gallery_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwts_gallery_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwts_gallery_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwts_gallery_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwts_gallery_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwts_gallery_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwts_gallery_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwts_gallery_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtshide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtshide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtshide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtshide_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtshide_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtshide_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtshide_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtshide_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsimage_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsimage_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsimage_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsimage_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsvertical_gal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsvertical_gal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsvertical_gal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsvertical_gal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsVerticalOpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsVerticalOpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsVerticalOpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsVerticalOpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsVerticalcontrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsVerticalcontrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsVerticalcontrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsVerticalcontrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsSetVertBreakpoints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsSetVertBreakpoints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsSetVertBreakpoints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsSetVertBreakpoints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsslider_alignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsslider_alignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsslider_alignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsslider_alignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsslider_bgcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsslider_bgcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsslider_bgcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsslider_bgcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsslider_pleft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsslider_pleft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsslider_pleft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsslider_pleft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsslider_pright'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsslider_pright'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsslider_pright'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsslider_pright'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsslider_ptop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsslider_ptop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsslider_ptop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsslider_ptop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwtsslider_pbottom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwtsslider_pbottom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwtsslider_pbottom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwtsslider_pbottom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwts_gwl_switcher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwts_gwl_switcher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwts_gwl_switcher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwts_gwl_switcher'"
