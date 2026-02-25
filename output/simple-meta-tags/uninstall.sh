#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'page_meta_title'
wp option delete 'page_meta_keywords'
wp option delete 'page_meta_description'
wp option delete 'post_meta_title'
wp option delete 'post_meta_keywords'
wp option delete 'post_meta_description'
wp option delete 'use_pages_meta_data'
wp option delete 'use_posts_meta_data'
wp option delete 'meta_title'
wp option delete 'meta_description'
wp option delete 'meta_keywords'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sc_m_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sc_m_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sc_m_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sc_m_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sc_m_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sc_m_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sc_m_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sc_m_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sc_m_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sc_m_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sc_m_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sc_m_keywords'"
