# ansible-docker-images
[![Docker Automated buil](https://img.shields.io/docker/automated/danvaida/ansible-docker-images.svg)](https://hub.docker.com/r/danvaida/ansible-docker-images/)
[![Docker Pulls](https://img.shields.io/docker/pulls/danvaida/ansible-docker-images.svg)](https://hub.docker.com/r/danvaida/ansible-docker-images/)

| OS           | Version | Flavour  | Ansible version | Image scan               |
|--------------|---------|----------|-----------------|--------------------------|
| Oracle Linux | 7       |          | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/4ea5a4a9cc4b7be09db91b7b3093eff1409b82aae8817fdc7197065d50b36de6)][1]|
| Amazon Linux | 2016.09 |          | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/152f0153c76b0e66b6ee656a0dbbf28678fd573717f49d4e987412cdbdddecdf)][2]|
| Debian       | Stretch |          | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/0460e2a23ce27d16db8a798371e71cf8fcb362fc412e920b70ce6d4ca4476df9)][3]|
| Debian       | Wheezy  | AWS      | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/ccf94b8d19f2f284bc871eb5c697c69ba2f4646253315889ee5ca11ca201aa01)][4]|
| Debian       | Stretch | slim     | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/69fb9d58c318b5dc663006f65ec6e0a599fd5bc5bb0c1e56132a597141def2d1)][5]|
| Debian       | Wheezy  |          | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/cae1ab29b37e938df5d4ab9ba6b2638c77c41782b2c70d5aa4e2b59a28146054)][6]|
| Debian       | Jessie  |          | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/924f930e913088740cfba7de8b46235b717bc4ed6e2082351e77b6435c7da5e0)][7]|
| Debian       | Wheezy  | AWS slim | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/4b8acc7e2267a72a719f08b12321036d605c64b6be7275dfe893912843794b21)][8]|
| Debian       | Jessie  | slim     | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/26143dbdfb8b7cc478f014104cb8db4c78524d2a2b500dd04bbe8a9ecbcf9352)][9]|
| Amazon Linux | 2017.03 |          | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/b1912b8852ddf86e2c8e3fad9fdc4cc380c763c7d573f8880f91e9ab38ef4b84)][10]|
| CentOS       | 7       |          | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/f2bc084041a65c480a8f823a48b9b0c2e409de70009b4170b41ee68f470dda92)][11]|
| Debian       | Wheezy  | slim     | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/5dd3d80e318deec6506a4daa36e527f7ab7f7bafa542392ca72a36f6e5df84c8)][12]|
| Debian       | Stretch | AWS slim | 2.4.2           | [![Anchore Image Overview](https://anchore.io/service/badges/image/9c2d4ecbe822ac84dfff441b79ebe50317bfd323150ed04b1dd3fdc001f61aad)][13]|

Docker images used for testing Ansible roles

[1]: https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Aoracle-7
[2]: https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Aamazon-2016.09
[3]: https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Adebian-stretch
[4]: https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Adebian-wheezy-aws
[5]: https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Adebian-stretch-slim
[6]: https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Adebian-wheezy
[7]: https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Adebian-jessie
[8]: https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Adebian-wheezy-aws-slim
[9]: https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Adebian-jessie-slim
[10]:https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Aamazon-2017.03
[11]:https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Acentos-7
[12]:https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Adebian-wheezy-slim
[13]:https://anchore.io/image/dockerhub/danvaida%2Fansible-docker-images%3Adebian-stretch-aws-slim
