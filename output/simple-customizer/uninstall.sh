#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_customize_settings'
wp option delete 'simple_customize'
wp option delete 'simple_customize_category'
wp option delete 'simple_customize_fonts'
wp option delete 'simple_customize_google_fonts'
wp option delete 'simple-customize-version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"

# Delete Transients
wp transient delete 'simple-customize-css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_customize_font'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_customize_font'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_customize_font'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_customize_font'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_customize_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_customize_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_customize_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_customize_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_customize_attribute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_customize_attribute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_customize_attribute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_customize_attribute'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_customize_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_customize_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_customize_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_customize_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_customize_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_customize_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_customize_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_customize_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_customize_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_customize_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_customize_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_customize_theme'"
