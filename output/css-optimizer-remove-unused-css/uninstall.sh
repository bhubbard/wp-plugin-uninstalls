#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cssoptimizer_options_enable'
wp option delete 'cssoptimizer_options_token'
wp option delete 'cssoptimizer_options_generateccss'
wp option delete 'cssoptimizer_options_safelist'
wp option delete 'cssoptimizer_options_limitpagepost'
wp option delete 'cssoptimizer_options_exclude'
wp option delete 'cssoptimizer_options_exclude_css'
wp option delete 'cssoptimizer_cache_clean'
wp option delete 'cssoptimizer_activation_redirect'
wp option delete 'cssoptimizer_first_time_guide'

# Delete Transients
wp transient delete 'cssop_ccss_queue'

# Clear Cron Jobs
wp cron event delete 'cssoptimizer_purge_queue'
wp cron event delete 'cssop_filter_job_queue_job'

