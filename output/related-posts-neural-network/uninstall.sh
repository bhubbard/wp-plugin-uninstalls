#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ntkrpnn_neuralnet_learningon'
wp option delete 'ntkrpnn_neuralnet_urlmusthave'
wp option delete 'ntkrpnn_neuralnet_urlmustnot'
wp option delete 'ntkrpnn_neuralnet_stripget'
wp option delete 'ntkrpnn_neuralnet_removeget'
wp option delete 'ntkrpnn_neuralnet_noadmin'
wp option delete 'ntkrpnn_neuralnet_maximumweight'
wp option delete 'ntkrpnn_neuralnet_maximumscore'
wp option delete 'ntkrpnn_neuralnet_pro'
wp option delete 'ntk_neuralnet_learningon'
wp option delete 'ntk_neuralnet_siteid'
wp option delete 'ntkrpnn_neuralnet_siteid'
wp option delete 'ntk_neuralnet_pro'
wp option delete 'ntk_neuralnet_deleteold'
wp option delete 'ntkrpnn_neuralnet_deleteold'
wp option delete 'ntk_neuralnet_urlmusthave'
wp option delete 'ntk_neuralnet_urlmustnot'
wp option delete 'ntk_neuralnet_stripget'
wp option delete 'ntk_neuralnet_removeget'
wp option delete 'ntk_neuralnet_debug'
wp option delete 'ntkrpnn_neuralnet_debug'
wp option delete 'ntk_neuralnet_noadmin'
wp option delete 'ntk_neuralnet_maximumweight'
wp option delete 'ntk_neuralnet_maximumscore'

# Clear Cron Jobs
wp cron event delete 'ntkrpnn_neuralnet_cronjob'

