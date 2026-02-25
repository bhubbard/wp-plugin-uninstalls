#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aeo_engine_activation_date'
wp option delete 'aeo_engine_version'
wp option delete 'aeo_engine_enable_blogposting'
wp option delete 'aeo_engine_enable_breadcrumb'
wp option delete 'aeo_engine_enable_organization'
wp option delete 'aeo_engine_language'
wp option delete 'aeo_engine_post_types'
wp option delete 'aeo_engine_org_name'
wp option delete 'aeo_engine_org_description'
wp option delete 'aeo_engine_org_url'
wp option delete 'aeo_engine_org_logo'
wp option delete 'aeo_engine_author_name'
wp option delete 'aeo_engine_author_url'
wp option delete 'aeo_engine_social_facebook'
wp option delete 'aeo_engine_social_twitter'
wp option delete 'aeo_engine_social_linkedin'
wp option delete 'aeo_engine_social_instagram'
wp option delete 'aeo_engine_social_youtube'
wp option delete 'aeo_engine_social_github'

