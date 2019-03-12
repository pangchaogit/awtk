/**
 * File:   str_gen.h
 * Author: AWTK Develop Team
 * Brief:  str_gen
 *
 * Copyright (c) 2018 - 2019  Guangzhou ZHIYUAN Electronics Co.,Ltd.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * License file for more details.
 *
 */

/**
 * History:
 * ================================================================
 * 2018-05-03 Li XianJing <xianjimli@hotmail.com> created
 *
 */

#ifndef TK_STR_GEN_H
#define TK_STR_GEN_H

#include <map>
#include <string>
#include <vector>
#include <algorithm>
#include "tkc/types_def.h"

using std::map;
using std::pair;
using std::string;
using std::vector;

class Sentence {
 public:
  Sentence(const string& key, const string& value) {
    this->key = key;
    this->value = value;
  }

  bool operator<(const Sentence& other) const {
    return this->key < other.key;
  }

  string key;
  string value;
};

class Sentences {
 public:
  void Add(const Sentence& s) {
    this->sentences.push_back(s);
  }

  void Sort() {
    std::sort(this->sentences.begin(), this->sentences.end());
  }

  vector<Sentence> sentences;
};

typedef map<string, Sentences> StrTable;

class StrGen {
 public:
  void Add(const string& language, const Sentence& sentence);
  uint8_t* Output(const string& language, uint8_t* buff, uint32_t max_size);

  vector<string> GetLanguages();

 private:
  uint8_t* OutputSentences(const Sentences& sentences, uint8_t* buff, uint32_t max_size);
  StrTable str_table;
};

#endif /*TK_STR_GEN_H*/
