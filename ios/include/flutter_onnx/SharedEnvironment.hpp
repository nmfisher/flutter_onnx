#pragma once

#include "onnx/experimental_onnxruntime_cxx_api.h"

using namespace std;

namespace flutter_onnx {
    static shared_ptr<Ort::Env> env;

    shared_ptr<Ort::Env> getEnv() { 
        if(!env) {
            env = make_shared<Ort::Env>(ORT_LOGGING_LEVEL_VERBOSE, "Default");
        }
        return env;
    }
}
