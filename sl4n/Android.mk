#
#  Copyright (C) 2015 Google, Inc.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at:
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := sl4n

LOCAL_C_INCLUDES += \
  system/bt \
  system/bt/include \
  $(LOCAL_PATH)/rapidjson/include \
  $(LOCAL_PATH)/facades

LOCAL_SRC_FILES := \
  facades/bluetooth/bt_binder_facade.cpp \
  facades/test/test_facade.cpp \
  main.cpp \
  utils/command_receiver.cpp \
  utils/common_utils.cpp

LOCAL_SHARED_LIBRARIES += \
  libbinder \
  libchrome \
  libcutils \
  libutils \
  libwifi-system \
  liblog

LOCAL_STATIC_LIBRARIES += \
  libbtcore \
  libosi \
  libnl \
  libbluetooth-binder-common \
  libbluetooth-types

LOCAL_CFLAGS += -Wall -Werror
LOCAL_CFLAGS += -Wno-unused-parameter -Wno-missing-field-initializers

include $(BUILD_EXECUTABLE)
