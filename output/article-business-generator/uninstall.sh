#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'artbusgen_lite_groq_api_key'
wp option delete 'artbusgen_lite_groq_model_name'
wp option delete 'artbusgen_lite_article_topic'
wp option delete 'artbusgen_lite_system_prompt'
wp option delete 'artbusgen_lite_category'
wp option delete 'artbusgen_lite_post_status'
wp option delete 'artbusgen_lite_frequency'
wp option delete 'artbusgen_lite_authoritative_site_1'

# Delete Transients
wp transient delete 'artbusgen_lite_is_generating'

# Clear Cron Jobs
wp cron event delete 'artbusgen_lite_generate_article_event'

