library.addScripts = async function (scripts) {
    // Add our debug script for now
    scripts.push('debug.js');
    return scripts;
};

library.overrideNavigation = async function (data) {
    // Force navigation data to be available to templates
    if (data.templateData) {
        data.templateData.navigation = data.templateData.navigation || [];
        console.log('AP Theme: Ensuring navigation data is available');
    }
    return data;
};