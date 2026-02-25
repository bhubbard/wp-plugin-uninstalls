#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcf_link_url'
wp option delete 'mcf_link_title'
wp option delete 'mcf_form_subject'
wp option delete 'mcf_form_title'
wp option delete 'mcf_subject'
wp option delete 'mcf_form_cc_sender'

