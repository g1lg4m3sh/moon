var redbird = require('redbird')({
  port: 80,
});

var docker = require('redbird').docker;
docker(redbird).register("ops1.cm-staging-moonactive.net", 'moon_service1');
docker(redbird).register("ops2.cm-staging-moonactive.net", 'moon_service2');
docker(redbird).register("ops3.cm-staging-moonactive.net", 'moon_service3');
