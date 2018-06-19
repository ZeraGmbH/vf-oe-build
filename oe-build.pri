#enable c++11
CONFIG += c++11

isEmpty( VF_NO_DEPLOY ) {
  unix:equals(TEMPLATE, "lib") {
    VERSION = 0.0.1
  isEmpty( VF_NO_DEPLOY_HEADERS ) {
    public_headers.path = /usr/include
    INSTALLS += public_headers
  }
  }
}


# this will allow colored debug output
#DEFINES += VEIN_COLORS_SUPPORT


#dependency tracking without config code duplication
defined(VEIN_DEP_EVENT, var) {
  LIBS += -lvein-event
}

defined(VEIN_DEP_COMP, var) {
  LIBS += -lvein-component
}

defined(VEIN_DEP_SCRIPT, var) {
  LIBS += -lvein-script
}

defined(VEIN_DEP_HASH, var) {
  LIBS += -lvein-hash
}

defined(VEIN_DEP_PROTOBUF, var) {
  LIBS += -lvein-framework-protobuf
}

defined(VEIN_DEP_TCP, var) {
  LIBS += -lxiqnet
}

defined(VEIN_DEP_TCP2, var) {
  LIBS += -lvein-tcp
}

defined(VEIN_DEP_NET, var) {
  LIBS += -lvein-net
}

defined(VEIN_DEP_NET2, var) {
  LIBS += -lvein-net2
}

defined(VEIN_DEP_HELPER, var) {
#currently only an inlined template is provided from the helper, link the library if necessary
#  LIBS += -lvein-helper
}

defined(VEIN_DEP_QML, var) {
  LIBS += -lqml-veinentity
}

defined(VEIN_DEP_CCAPI, var) {
  LIBS += -lvein-qt
}

defined(VEIN_DEP_LOGGER, var) {
  LIBS += -lvein-logger
}

